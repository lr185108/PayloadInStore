import requests
from requests.auth import HTTPDigestAuth
import json
import pymysql
from random import seed
from random import randint



class StoreManeger:
    def __init__ (self):
        print('Create Store Manager')
        self.googleUrl = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=32.0879122,34.7724783&radius=3000&type=supermarket&keyword=supersal&key=AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g'
        self.mydb = pymysql.connect(
            host="localhost",
            user="root",
            password="123qwe",
            database="hack"
        )

    def getNextLvl(self,maxP,numP):
        maxDiffSize = round(maxP*0.4)
        diff = randint(1, maxDiffSize)
        isAdd = randint(0, 1)
        newLvl = numP
        if (isAdd == 1 and numP < maxP):
            newLvl = numP + diff
            if (newLvl > maxP):
                newLvl = maxP
        elif (numP > 3):
            newLvl = numP - diff
            if (newLvl < 1):
                newLvl = 2
        else:
             newLvl = numP + diff
        return (newLvl)



    def createStores(self, myResponce):
        jData = json.loads(myResponce.content)
        storeList = jData['results']
        mycursor = self.mydb.cursor()
        seed(1)
        for store in storeList:
            storeId = store['id']
            sql = 'SELECT count(*) FROM hack.stores_google Where Id= %s'
            mycursor.execute(sql, store['id'])
            selStores = mycursor.fetchall()
            if (selStores[0][0] == 0):
                placeId = store["place_id"]
                url = 'https://maps.googleapis.com/maps/api/place/details/json?place_id=' + placeId + '&fields=photos,formatted_phone_number&key=AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g'
                myRes = requests.get(url)
                data = json.loads(myRes.content)
                storeDetails = data["result"]

                try:
                    phone = storeDetails["formatted_phone_number"]
                except:
                    phone = "Not Found"
                try:
                    photos = storeDetails["photos"][0]["photo_reference"]
                except:
                    photos = "NA"
                lat = store['geometry']['location']['lat']
                lng = store['geometry']['location']['lng']
                icon = store['icon']
                name = store['name']
                adress = store['vicinity']
                rating = store['rating']
                user_ratings_total = store['user_ratings_total']

                sqr = randint(50, 600)

                pop = randint(1, 5)
                maxP = round(sqr / 3)
                numP = randint(1, maxP)

                lvl1 = self.getNextLvl(maxP, numP)
                lvl2 = self.getNextLvl(maxP, lvl1)
                lvl3 = self.getNextLvl(maxP, lvl2)
                lvl4 = self.getNextLvl(maxP, lvl3)
                lvl5 = self.getNextLvl(maxP, lvl4)
                lvl6 = self.getNextLvl(maxP, lvl5)

                sql = "INSERT INTO stores_google VALUES (%s, %s, %s, %s, %s, %s,%s, %s, %s, %s, %s, %s, %s, %s,%s, %s)"
                val = (storeId, lat, lng, icon, name, adress, rating, user_ratings_total, photos, phone,  lvl1, lvl2, lvl3, lvl4, lvl5, lvl6)
                mycursor.execute(sql, val)




                sql = "INSERT INTO stores VALUES (%s, %s, %s,0)"
                val = (storeId, str(maxP), str(sqr))
                mycursor.execute(sql, val)

                sql = "INSERT INTO storescount VALUES (%s, NOW(), %s)"
                val = (storeId, str(numP))
                mycursor.execute(sql, val)

                self.mydb.commit()

    def pre(self, part, tot):
        pre = float(float(part) / float(tot) * 100)
        return round(pre)

    def rank(self, pre):
        if (pre > 20 and pre <= 40):
            return 2
        elif (pre > 40 and pre <= 60):
            return 3
        elif (pre > 60 and pre <= 80):
            return 4
        elif pre > 80:
            return 5
        else:
            return 1



    def selectStores(self,myResponse):
        jData = json.loads(myResponse.content)
        storeList = jData['results']
        mycursor = self.mydb.cursor()
        outStores = []
        for store in storeList:
            outStore = {}  # storeId, lat, lng, icon, name, adress, rating, user_ratings_total


            outStore['id'] = store['id']
            outStore['lat'] = store['geometry']['location']['lat']
            outStore['lng'] = store['geometry']['location']['lng']

            outStore['icon'] = store['icon']
            outStore['name'] = store['name']
            outStore['adress'] = store['vicinity']
            outStore['rating'] = store['rating']
            outStore['rating_numbers'] = store['user_ratings_total']

            sql = "SELECT * FROM hack.stores_google where id = %s"
            mycursor.execute(sql, store['id'])
            storesGoogleDB = mycursor.fetchall()


            sql = "SELECT * FROM hack.stores where id = %s"
            mycursor.execute(sql, store['id'])
            storesdb = mycursor.fetchall()

            outStore['maxCustomer'] = str(storesdb[0][1])
            outStore['squareMeter'] = str(storesdb[0][2])

            sql ="SELECT * FROM hack.storescount where id = %s"
            mycursor.execute(sql, store['id'])
            stores_counts = mycursor.fetchall()

            outStore['lastUpdate'] = str(stores_counts[0][1])
            outStore['numCustomer'] = str(stores_counts[0][2])

            outStore["phone"] = storesGoogleDB[0][9]
            outStore["photo"] = storesGoogleDB[0][8]

            levels = []
            level = {}
            level["numCustomer"] = str(stores_counts[0][2])
            level["pre"] = self.pre(stores_counts[0][2],str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][10])
            level["pre"] = self.pre(storesGoogleDB[0][10], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][11])
            level["pre"] = self.pre(storesGoogleDB[0][11], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][12])
            level["pre"] = self.pre(storesGoogleDB[0][12], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][13])
            level["pre"] = self.pre(storesGoogleDB[0][13], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][14])
            level["pre"] = self.pre(storesGoogleDB[0][14], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            level = {}
            level["numCustomer"] = str(storesGoogleDB[0][15])
            level["pre"] = self.pre(storesGoogleDB[0][15], str(storesdb[0][1]))
            level["rank"] = self.rank(level["pre"])
            levels.append(level)
            outStore["Levels"] = levels

            outStores.append(outStore)
        ret = {'stores': outStores}
        return ret



    def getFromGoogle(self, lat, lng, chain):
        url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=' + lat + ',' + lng + '&radius=3000&type=supermarket&keyword=' + chain + '&key=AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g'
        print(url)
        myResponse = requests.get(url)
        if (myResponse.ok):
            self.createStores(myResponse);
            ret = self.selectStores(myResponse)
            return(ret)
        else:
            # If response code is not ok (200), print the resulting http error code with description
            myResponse.raise_for_status()

    #deprecated
    def selectGoogleStore(self):
        mycursor = self.mydb.cursor()
        mycursor.execute("SELECT * FROM hack.stores order by id")
        stores = mycursor.fetchall()


        mycursor.execute("SELECT * FROM hack.stores_google order by id")
        stores_google=mycursor.fetchall()
        mycursor.execute("SELECT * FROM hack.storescount order by id")
        stores_counts = mycursor.fetchall()

        outStores = []
        i = 0
        for store in stores_google:
            outStore = {} # storeId, lat, lng, icon, name, adress, rating, user_ratings_total
            outStore['id'] = str(store[0])
            outStore['lat'] = str(store[1])
            outStore['lng'] = str(store[2])
            outStore['icon'] = str(store[3])
            outStore['name'] = str(store[4])
            outStore['adress'] = str(store[5])
            outStore['rating'] = str(store[6])
            outStore['rating_numbers'] = str(store[7])
            outStore['maxCustomer'] = str(stores[i][1])
            outStore['squareMeter'] = str(stores[i][2])
            outStore['lastUpdate'] = str(stores_counts[i][1])
            outStore['numCustomer'] = str(stores_counts[i][2])
            rankNum = int(stores_counts[i][2])/int(stores[i][1])
            rank = 1
            if rankNum > 0.2 and rankNum < 0.4:
                rank = 2
            if rankNum > 0.4 and rankNum < 0.6:
                rank = 3
            if rankNum > 0.6 and rankNum < 0.8:
                rank = 4
            if rankNum > 0.8:
                rank = 5
            outStore['rank'] = str(rank)
            outStores.append(outStore)
            i = i + 1
        j = 1
        ret = {'stores': outStores}
        return ret

    # deprecated
    def loadGoogleStore(self):
        myResponse = requests.get(self.googleUrl)
        if (myResponse.ok):
            jData = json.loads(myResponse.content)
            storeList = jData['results']
            for store in storeList:
                storeId = store['id']
                lat = store['geometry']['location']['lat']
                lng = store['geometry']['location']['lng']
                icon = store['icon']
                name = store['name']
                adress = store['vicinity']
                rating = store['rating']
                user_ratings_total = store['user_ratings_total']

                sql = "INSERT INTO stores_google VALUES (%s, %s, %s, %s, %s, %s,%s, %s)"
                val = (storeId, lat, lng, icon, name, adress, rating, user_ratings_total)
                mycursor = self.mydb.cursor()
                mycursor.execute(sql, val)
            self.mydb.commit()
        else:
            # If response code is not ok (200), print the resulting http error code with description
            myResponse.raise_for_status()


storeManeger = StoreManeger()
a = storeManeger.getFromGoogle('32.0879122','34.7724783','supersal')
#print(a)
#i = 1
export default function FacultiesList(){

    const faculties = [
        {
          "createdAt": "2024-11-27T07:57:07.059Z",
          "FacultyName": "Modern Bronze Pizza",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "VI",
          "FacultyDescription": "The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design",
          "FacultyDateOfBirth": "1994-04-29T11:57:31.045Z",
          "_id": 1
        },
        {
          "createdAt": "2024-11-28T00:32:19.414Z",
          "FacultyName": "Gorgeous Concrete Sausages",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "MD",
          "FacultyDescription": "Boston's most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles",
          "FacultyDateOfBirth": "1235-09-23T07:46:25.773Z",
          "_id": 2
        },
        {
          "createdAt": "2024-11-28T01:06:15.172Z",
          "FacultyName": "Tasty Concrete Tuna",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "PS",
          "FacultyDescription": "Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support",
          "FacultyDateOfBirth": "1998-11-27T21:21:13.209Z",
          "_id": 3
        },
        {
          "createdAt": "2024-11-28T06:20:28.398Z",
          "FacultyName": "Oriental Metal Bike",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "GT",
          "FacultyDescription": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
          "FacultyDateOfBirth": "1993-12-10T00:13:11.739Z",
          "_id": 4
        },
        {
          "createdAt": "2024-11-27T23:11:40.406Z",
          "FacultyName": "Handcrafted Wooden Shirt",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "YT",
          "FacultyDescription": "Carbonite web goalkeeper gloves are ergonomically designed to give easy fit",
          "FacultyDateOfBirth": "1998-03-28T03:53:49.468Z",
          "_id": 5
        },
        {
          "createdAt": "2024-11-27T12:37:01.187Z",
          "FacultyName": "Handmade Concrete Shoes",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "NL",
          "FacultyDescription": "New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016",
          "FacultyDateOfBirth": "1948-08-12T19:42:41.267Z",
          "_id": 6
        },
        {
          "createdAt": "2024-11-27T23:45:25.586Z",
          "FacultyName": "Electronic Rubber Fish",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "TH",
          "FacultyDescription": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
          "FacultyDateOfBirth": "1953-09-27T18:56:57.991Z",
          "_id": 7
        },
        {
          "createdAt": "2024-11-27T14:46:33.153Z",
          "FacultyName": "Gorgeous Wooden Mouse",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "AR",
          "FacultyDescription": "The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design",
          "FacultyDateOfBirth": "1979-01-26T12:18:54.415Z",
          "_id": 8
        },
        {
          "createdAt": "2024-11-27T22:44:01.646Z",
          "FacultyName": "Elegant Fresh Keyboard",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SI",
          "FacultyDescription": "Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support",
          "FacultyDateOfBirth": "1967-12-30T23:22:32.937Z",
          "_id": 9
        },
        {
          "createdAt": "2024-11-27T16:58:19.076Z",
          "FacultyName": "Recycled Wooden Bike",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "GH",
          "FacultyDescription": "The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality",
          "FacultyDateOfBirth": "1971-06-18T03:44:44.354Z",
          "_id": 10
        },
        {
          "createdAt": "2024-11-27T08:47:57.088Z",
          "FacultyName": "Sleek Rubber Cheese",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "ZA",
          "FacultyDescription": "Carbonite web goalkeeper gloves are ergonomically designed to give easy fit",
          "FacultyDateOfBirth": "1957-08-31T01:12:47.604Z",
          "_id": 11
        },
        {
          "createdAt": "2024-11-27T15:59:14.982Z",
          "FacultyName": "Fantastic Rubber Fish",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "IS",
          "FacultyDescription": "The Football Is Good For Training And Recreational Purposes",
          "FacultyDateOfBirth": "1998-09-14T10:02:45.161Z",
          "_id": 12
        },
        {
          "createdAt": "2024-11-27T16:06:03.821Z",
          "FacultyName": "Practical Cotton Car",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "PN",
          "FacultyDescription": "New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016",
          "FacultyDateOfBirth": "1980-06-06T18:14:15.189Z",
          "_id": 13
        },
        {
          "createdAt": "2024-11-27T22:44:39.442Z",
          "FacultyName": "Refined Cotton Soap",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "UA",
          "FacultyDescription": "Boston's most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles",
          "FacultyDateOfBirth": "1973-05-01T15:28:38.703Z",
          "_id": 14
        },
        {
          "createdAt": "2024-11-28T05:09:33.869Z",
          "FacultyName": "Rustic Metal Ball",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "IS",
          "FacultyDescription": "The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive",
          "FacultyDateOfBirth": "1988-05-29T12:40:49.956Z",
          "_id": 15
        },
        {
          "createdAt": "2024-11-28T03:06:23.456Z",
          "FacultyName": "Small Fresh Tuna",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "GD",
          "FacultyDescription": "The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive",
          "FacultyDateOfBirth": "1984-06-12T08:53:37.875Z",
          "_id": 16
        },
        {
          "createdAt": "2024-11-28T03:53:51.629Z",
          "FacultyName": "Refined Bronze Table",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SB",
          "FacultyDescription": "The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J",
          "FacultyDateOfBirth": "1973-05-09T02:45:20.845Z",
          "_id": 17
        },
        {
          "createdAt": "2024-11-28T01:21:31.438Z",
          "FacultyName": "Incredible Soft Shoes",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "AG",
          "FacultyDescription": "The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality",
          "FacultyDateOfBirth": "2001-02-11T00:18:26.188Z",
          "_id": 18
        },
        {
          "createdAt": "2024-11-27T21:04:27.459Z",
          "FacultyName": "Handcrafted Bronze Chair",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SL",
          "FacultyDescription": "The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive",
          "FacultyDateOfBirth": "1946-05-01T15:40:49.120Z",
          "_id": 19
        },
        {
          "createdAt": "2024-11-27T14:06:13.332Z",
          "FacultyName": "Generic Soft Hat",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SB",
          "FacultyDescription": "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
          "FacultyDateOfBirth": "1970-05-16T09:18:56.977Z",
          "_id": 20
        },
        {
          "createdAt": "2024-11-27T17:43:22.933Z",
          "FacultyName": "Unbranded Rubber Bike",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "AG",
          "FacultyDescription": "Boston's most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles",
          "FacultyDateOfBirth": "2001-04-06T11:06:49.419Z",
          "_id": 21
        },
        {
          "createdAt": "2024-11-28T00:35:03.380Z",
          "FacultyName": "Tasty Cotton Car",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "IE",
          "FacultyDescription": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
          "FacultyDateOfBirth": "1954-10-10T04:53:58.430Z",
          "_id": 22
        },
        {
          "createdAt": "2024-11-27T10:02:50.083Z",
          "FacultyName": "Recycled Frozen Pizza",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "CM",
          "FacultyDescription": "New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016",
          "FacultyDateOfBirth": "1981-05-20T19:33:02.174Z",
          "_id": 23
        },
        {
          "createdAt": "2024-11-27T15:55:43.185Z",
          "FacultyName": "Intelligent Wooden Gloves",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SK",
          "FacultyDescription": "The Football Is Good For Training And Recreational Purposes",
          "FacultyDateOfBirth": "1989-08-12T07:31:43.092Z",
          "_id": 24
        },
        {
          "createdAt": "2024-11-28T00:03:30.565Z",
          "FacultyName": "Ergonomic Soft Bike",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "KM",
          "FacultyDescription": "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
          "FacultyDateOfBirth": "1983-04-21T23:46:39.965Z",
          "_id": 25
        },
        {
          "createdAt": "2024-11-27T10:52:24.793Z",
          "FacultyName": "Awesome Metal Chips",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "PH",
          "FacultyDescription": "New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart",
          "FacultyDateOfBirth": "1984-12-13T00:34:01.771Z",
          "_id": 26
        },
        {
          "createdAt": "2024-11-28T04:23:11.822Z",
          "FacultyName": "Bespoke Concrete Sausages",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "IL",
          "FacultyDescription": "The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive",
          "FacultyDateOfBirth": "2005-08-29T02:23:41.860Z",
          "_id": 27
        },
        {
          "createdAt": "2024-11-27T23:32:34.961Z",
          "FacultyName": "Licensed Steel Bike",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "PH",
          "FacultyDescription": "New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart",
          "FacultyDateOfBirth": "1976-05-13T05:23:21.355Z",
          "_id": 28
        },
        {
          "createdAt": "2024-11-27T14:53:42.319Z",
          "FacultyName": "Bespoke Metal Chips",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "SI",
          "FacultyDescription": "Carbonite web goalkeeper gloves are ergonomically designed to give easy fit",
          "FacultyDateOfBirth": "1980-11-12T09:03:23.717Z",
          "_id": 29
        },
        {
          "createdAt": "2024-11-28T07:07:48.711Z",
          "FacultyName": "Licensed Concrete Ball",
          "FacultyImage": "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=",
          "FacultyInitial": "GR",
          "FacultyDescription": "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
          "FacultyDateOfBirth": "1947-06-20T00:46:08.601Z",
          "_id": 30
        }
      ]
    return(
        <>
            <div className="row">
                {
                    faculties.map((value)=>
                        <div className="card" style={{width: "23%",margin: "10px"}}>
                            <img src={ value.FacultyImage } className="card-img-top" alt="..." />
                            <div className="card-body">
                                <h5 className="card-title">{ value.FacultyName }</h5>
                                <h6 className="card-subtitle mb-2 text-muted">{ value.FacultyInitial }</h6>
                                <p className="card-text">{ value.FacultyDescription }</p>
                            </div>
                        </div>
                    )
                }
            </div>
        </>
    );
}
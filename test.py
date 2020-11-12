import lambda_function

event = {
    "url": "https://raw.githubusercontent.com/alexeygrigorev/clothing-dataset-small/master/test/pants/4aabd82c-82e1-4181-a84d-d0c6e550d26d.jpg"
}

print(lambda_function.handler(event, None))

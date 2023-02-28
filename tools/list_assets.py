import os 

def to_camel_case(snake_str):
    components = snake_str.split('_')
    return components[0] + ''.join(x.title() for x in components[1:])

for file in os.listdir('../assets'):
    if (file != "fonts") :
        withoutExtension = file[0:-4]
        print("static final Image " + to_camel_case(withoutExtension) + " = Image.asset('assets/" + file + "');") 


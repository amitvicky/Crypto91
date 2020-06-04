def Powerpuff( create, z ):

    req =  create[0] + create[1] + create[2]
    avil = z[0] + z[1] + z[2]
    r = int( avil / req )
    print("\noutput\n",r)
    return r;

def Chk_div( create, z):
    z_1 = int(z[0]/create[0])
    z_2 = int(z[1]/create[1])
    z_3 = int(z[2]/create[2])
    print("\nQuantity taken to the account  ", z_1, z_2, z_3)
    return z_1,z_2,z_3;

if __name__ == '__main__':
    try:
        # number of elements
        ing = int(input("Enter Number of ingredients : "))
        print("\n###Space-separated integers representing the quantity of each ingredient###")
        # Below line read inputs from user using map() function
        create = list(map(int,input("\nIngredient required to create a Powerpuff Girl: ").strip().split()))
        z = list(map(int,input("\nIngredient present in the laboratory: ").strip().split()))

        if z[0]%3 == 0 and z[1]%6 == 0 and z[2]%10 == 0:
            Powerpuff( create, z )
            print("\nValues are even", Chk_div( create, z))
        else:
            print("\nValues are odd", Chk_div( create, z))
            print(f'\nPlease Enter value of multiple of {create[0]}*x and {create[1]}*y and {create[2]}*y')
    except (ValueError,IndexError,TypeError,ZeroDivisionError) as err:
        print('\n',err)

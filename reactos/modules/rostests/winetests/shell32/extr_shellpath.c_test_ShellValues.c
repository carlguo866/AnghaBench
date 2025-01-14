
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shellExpectedValues {int numTypes; int* types; int folder; } ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;




 scalar_t__ TRUE ;
 scalar_t__ broken (int) ;
 int getFolderName (int ) ;
 int ok (int,char*,int ,int,int) ;
 scalar_t__ pSHGetFolderLocation ;
 int testSHGetFolderLocation (int ) ;
 int testSHGetSpecialFolderLocation (int ) ;
 int test_SHGetFolderPath (scalar_t__,int ) ;
 int test_SHGetSpecialFolderPath (scalar_t__,int ) ;

__attribute__((used)) static void test_ShellValues(const struct shellExpectedValues testEntries[],
 int numEntries, BOOL optional)
{
    int i;

    for (i = 0; i < numEntries; i++)
    {
        BYTE type;
        int j;
        BOOL foundTypeMatch = FALSE;

        if (pSHGetFolderLocation)
        {
            type = testSHGetFolderLocation(testEntries[i].folder);
            for (j = 0; !foundTypeMatch && j < testEntries[i].numTypes; j++)
                if (testEntries[i].types[j] == type)
                    foundTypeMatch = TRUE;
            ok(foundTypeMatch || optional || broken(type == 0xff) ,
             "%s has unexpected type %d (0x%02x)\n",
             getFolderName(testEntries[i].folder), type, type);
        }
        type = testSHGetSpecialFolderLocation(testEntries[i].folder);
        for (j = 0, foundTypeMatch = FALSE; !foundTypeMatch &&
         j < testEntries[i].numTypes; j++)
            if (testEntries[i].types[j] == type)
                foundTypeMatch = TRUE;
        ok(foundTypeMatch || optional || broken(type == 0xff) ,
         "%s has unexpected type %d (0x%02x)\n",
         getFolderName(testEntries[i].folder), type, type);
        switch (type)
        {
            case 129:
            case 131:
            case 130:
            case 128:
                test_SHGetFolderPath(optional, testEntries[i].folder);
                test_SHGetSpecialFolderPath(optional, testEntries[i].folder);
                break;
        }
    }
}

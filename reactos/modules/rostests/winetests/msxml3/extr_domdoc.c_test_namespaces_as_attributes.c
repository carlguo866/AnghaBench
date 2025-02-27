
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {char* xmlns_uri; scalar_t__ guid; } ;
typedef TYPE_6__ namespace_as_attribute_t ;
typedef int VARIANT_BOOL ;
struct TYPE_12__ {char* member_0; char* member_1; char* member_2; } ;
struct TYPE_11__ {char* member_0; char* member_2; int * member_1; } ;
struct TYPE_10__ {char* member_0; char* member_1; char* member_2; } ;
struct TYPE_9__ {char* member_0; char* member_2; int * member_1; } ;
struct TYPE_8__ {char* member_0; char* member_1; char* member_2; } ;
typedef size_t LONG ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMNamedNodeMap ;
typedef int IXMLDOMDocument ;
typedef size_t HRESULT ;
typedef int * BSTR ;


 int CLSCTX_INPROC_SERVER ;
 size_t CoCreateInstance (scalar_t__,int *,int ,int *,void**) ;
 int IID_IXMLDOMDocument2 ;
 int IXMLDOMDocument_Release (int *) ;
 size_t IXMLDOMDocument_loadXML (int *,int ,int *) ;
 size_t IXMLDOMDocument_selectSingleNode (int *,int ,int **) ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 size_t IXMLDOMNamedNodeMap_get_item (int *,size_t,int **) ;
 size_t IXMLDOMNamedNodeMap_get_length (int *,size_t*) ;
 int IXMLDOMNode_Release (int *) ;
 size_t IXMLDOMNode_get_attributes (int *,int **) ;
 size_t IXMLDOMNode_get_baseName (int *,int **) ;
 size_t IXMLDOMNode_get_namespaceURI (int *,int **) ;
 size_t IXMLDOMNode_get_nodeName (int *,int **) ;
 size_t IXMLDOMNode_get_prefix (int *,int **) ;
 size_t IXMLDOMNode_get_text (int *,int **) ;
 int SUCCEEDED (size_t) ;
 size_t S_FALSE ;
 size_t S_OK ;
 int SysFreeString (int *) ;
 int _bstr_ (char*) ;
 int free_bstrs () ;
 int is_clsid_supported (scalar_t__,int *) ;
 int lstrcmpW (int *,int ) ;
 TYPE_6__* namespace_as_attribute_test_data ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;
 int wine_dbgstr_guid (scalar_t__) ;
 size_t wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_namespaces_as_attributes(void)
{
    const namespace_as_attribute_t *entry = namespace_as_attribute_test_data;
    struct test {
        const char *xml;
        int explen;
        const char *names[3];
        const char *prefixes[3];
        const char *basenames[3];
        const char *uris[3];
        const char *texts[3];
    };
    static const struct test tests[] = {
        {
            "<a ns:b=\"b attr\" d=\"d attr\" xmlns:ns=\"nshref\" />", 3,
            { "ns:b", "d", "xmlns:ns" },
            { "ns", ((void*)0), "xmlns" },
            { "b", "d", "ns" },
            { "nshref", ((void*)0), "" },
            { "b attr", "d attr", "nshref" },
        },

        {
            "<a d=\"d attr\" />", 1,
            { "d" },
            { ((void*)0) },
            { "d" },
            { ((void*)0) },
            { "d attr" },
        },

        {
            "<a xmlns:ns=\"nshref\" />", 1,
            { "xmlns:ns" },
            { "xmlns" },
            { "ns" },
            { "" },
            { "nshref" },
        },

        {
            "<a />", 0,
        },

        { ((void*)0) }
    };
    const struct test *test;
    IXMLDOMNamedNodeMap *map;
    IXMLDOMNode *node, *item;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    LONG len, i;
    HRESULT hr;
    BSTR str;

    while (entry->guid)
    {
        if (!is_clsid_supported(entry->guid, &IID_IXMLDOMDocument2))
        {
            entry++;
            continue;
        }

        test = tests;
        while (test->xml) {
            hr = CoCreateInstance(entry->guid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument2, (void **)&doc);
            ok(SUCCEEDED(hr), "Failed to create document %s, hr %#x.\n", wine_dbgstr_guid(entry->guid), hr);

            hr = IXMLDOMDocument_loadXML(doc, _bstr_(test->xml), &b);
            ok(hr == S_OK, "Failed to load xml, hr %#x.\n", hr);

            node = ((void*)0);
            hr = IXMLDOMDocument_selectSingleNode(doc, _bstr_("a"), &node);
            ok(SUCCEEDED(hr), "Failed to select a node, hr %#x.\n", hr);

            hr = IXMLDOMNode_get_attributes(node, &map);
            ok(SUCCEEDED(hr), "Failed to get attributes, hr %#x.\n", hr);

            len = -1;
            hr = IXMLDOMNamedNodeMap_get_length(map, &len);
            ok(SUCCEEDED(hr), "Failed to get map length, hr %#x.\n", hr);
            ok(len == test->explen, "got %d\n", len);

            item = ((void*)0);
            hr = IXMLDOMNamedNodeMap_get_item(map, test->explen+1, &item);
            ok(hr == S_FALSE, "Failed to get item, hr %#x.\n", hr);
            ok(!item, "Item should be NULL\n");

            for (i = 0; i < len; i++)
            {
                item = ((void*)0);
                hr = IXMLDOMNamedNodeMap_get_item(map, i, &item);
                ok(SUCCEEDED(hr), "Failed to get item, hr %#x.\n", hr);

                str = ((void*)0);
                hr = IXMLDOMNode_get_nodeName(item, &str);
                ok(SUCCEEDED(hr), "Failed to get node name, hr %#x.\n", hr);
                ok(!lstrcmpW(str, _bstr_(test->names[i])), "got %s\n", wine_dbgstr_w(str));
                SysFreeString(str);

                str = ((void*)0);
                hr = IXMLDOMNode_get_prefix(item, &str);
                if (test->prefixes[i])
                {
                    ok(hr == S_OK, "Failed to get node name, hr %#x.\n", hr);
                    ok(!lstrcmpW(str, _bstr_(test->prefixes[i])), "got %s\n", wine_dbgstr_w(str));
                    SysFreeString(str);
                }
                else
                    ok(hr == S_FALSE, "Failed to get node name, hr %#x.\n", hr);

                str = ((void*)0);
                hr = IXMLDOMNode_get_baseName(item, &str);
                ok(SUCCEEDED(hr), "Failed to get base name, hr %#x.\n", hr);
                ok(!lstrcmpW(str, _bstr_(test->basenames[i])), "got %s\n", wine_dbgstr_w(str));
                SysFreeString(str);

                str = ((void*)0);
                hr = IXMLDOMNode_get_namespaceURI(item, &str);
                if (test->uris[i])
                {
                    ok(hr == S_OK, "Failed to get node name, hr %#x.\n", hr);
                    if (test->prefixes[i] && !strcmp(test->prefixes[i], "xmlns"))
                        ok(!lstrcmpW(str, _bstr_(entry->xmlns_uri)), "got %s\n", wine_dbgstr_w(str));
                    else
                        ok(!lstrcmpW(str, _bstr_(test->uris[i])), "got %s\n", wine_dbgstr_w(str));
                    SysFreeString(str);
                }
                else
                    ok(hr == S_FALSE, "Failed to get node name, hr %#x.\n", hr);

                str = ((void*)0);
                hr = IXMLDOMNode_get_text(item, &str);
                ok(SUCCEEDED(hr), "Failed to get node text, hr %#x.\n", hr);
                ok(!lstrcmpW(str, _bstr_(test->texts[i])), "got %s\n", wine_dbgstr_w(str));
                SysFreeString(str);

                IXMLDOMNode_Release(item);
            }

            IXMLDOMNamedNodeMap_Release(map);
            IXMLDOMNode_Release(node);
            IXMLDOMDocument_Release(doc);

            test++;
        }

        entry++;
    }
    free_bstrs();
}

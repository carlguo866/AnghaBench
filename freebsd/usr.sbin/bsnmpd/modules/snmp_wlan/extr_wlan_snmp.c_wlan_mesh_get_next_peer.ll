; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_next_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_next_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_peer = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i64, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@wp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_peer* (%struct.asn_oid*, i64, %struct.wlan_iface**)* @wlan_mesh_get_next_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_peer* @wlan_mesh_get_next_peer(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.wlan_peer*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlan_peer*, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %7, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = call %struct.wlan_iface* (...) @wlan_mesh_first_interface()
  %28 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %27, %struct.wlan_iface** %28, align 8
  br label %29

29:                                               ; preds = %43, %26
  %30 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %30, align 8
  %32 = icmp ne %struct.wlan_iface* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %35 = load %struct.wlan_iface*, %struct.wlan_iface** %34, align 8
  %36 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %35, i32 0, i32 1
  %37 = call %struct.wlan_peer* @SLIST_FIRST(i32* %36)
  store %struct.wlan_peer* %37, %struct.wlan_peer** %11, align 8
  %38 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  %39 = icmp ne %struct.wlan_peer* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %41, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %44, align 8
  %46 = call %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface* %45)
  %47 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %46, %struct.wlan_iface** %47, align 8
  br label %29

48:                                               ; preds = %29
  store %struct.wlan_peer* null, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

49:                                               ; preds = %3
  %50 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @wlan_mac_index_decode(%struct.asn_oid* %50, i64 %51, i8* %16, i8* %19)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  %55 = call %struct.wlan_iface* @wlan_find_interface(i8* %16)
  %56 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %55, %struct.wlan_iface** %56, align 8
  %57 = icmp eq %struct.wlan_iface* %55, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %60 = load %struct.wlan_iface*, %struct.wlan_iface** %59, align 8
  %61 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %67 = load %struct.wlan_iface*, %struct.wlan_iface** %66, align 8
  %68 = call %struct.wlan_peer* @wlan_find_peer(%struct.wlan_iface* %67, i8* %19)
  store %struct.wlan_peer* %68, %struct.wlan_peer** %11, align 8
  %69 = icmp eq %struct.wlan_peer* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %58, %54, %49
  store %struct.wlan_peer* null, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

71:                                               ; preds = %65
  %72 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  %73 = load i32, i32* @wp, align 4
  %74 = call %struct.wlan_peer* @SLIST_NEXT(%struct.wlan_peer* %72, i32 %73)
  store %struct.wlan_peer* %74, %struct.wlan_peer** %11, align 8
  %75 = icmp ne %struct.wlan_peer* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %77, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %92, %78
  %80 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %81 = load %struct.wlan_iface*, %struct.wlan_iface** %80, align 8
  %82 = call %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface* %81)
  %83 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %82, %struct.wlan_iface** %83, align 8
  %84 = icmp ne %struct.wlan_iface* %82, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %87 = load %struct.wlan_iface*, %struct.wlan_iface** %86, align 8
  %88 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %87, i32 0, i32 1
  %89 = call %struct.wlan_peer* @SLIST_FIRST(i32* %88)
  store %struct.wlan_peer* %89, %struct.wlan_peer** %11, align 8
  %90 = icmp ne %struct.wlan_peer* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %93

92:                                               ; preds = %85
  br label %79

93:                                               ; preds = %91, %79
  %94 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %94, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %76, %70, %48, %40
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  ret %struct.wlan_peer* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_mesh_first_interface(...) #2

declare dso_local %struct.wlan_peer* @SLIST_FIRST(i32*) #2

declare dso_local %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_mac_index_decode(%struct.asn_oid*, i64, i8*, i8*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_peer* @wlan_find_peer(%struct.wlan_iface*, i8*) #2

declare dso_local %struct.wlan_peer* @SLIST_NEXT(%struct.wlan_peer*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

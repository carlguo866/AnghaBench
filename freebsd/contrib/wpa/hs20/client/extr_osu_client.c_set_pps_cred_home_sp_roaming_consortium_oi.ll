; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_home_sp_roaming_consortium_oi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_home_sp_roaming_consortium_oi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"- HomeSP/RoamingConsortiumOI = %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"roaming_consortiums\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to set cred roaming_consortiums\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_home_sp_roaming_consortium_oi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_home_sp_roaming_consortium_oi(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %9 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @xml_node_get_text(i32 %10, i32* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %36

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %21 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @set_cred_quoted(i32 %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @MSG_INFO, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %32 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @xml_node_get_text_free(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %15
  ret void
}

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

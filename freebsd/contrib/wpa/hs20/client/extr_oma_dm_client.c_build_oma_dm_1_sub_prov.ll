; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_build_oma_dm_1_sub_prov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_build_oma_dm_1_sub_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@DM_HS20_SUBSCRIPTION_PROVISIONING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"OMA-DM Package 1 (sub prov)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*, i32)* @build_oma_dm_1_sub_prov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_oma_dm_1_sub_prov(%struct.hs20_osu_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DM_HS20_SUBSCRIPTION_PROVISIONING, align 4
  %12 = call i32* @build_oma_dm_1(%struct.hs20_osu_client* %8, i8* %9, i32 %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @debug_dump_node(%struct.hs20_osu_client* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %7, align 8
  ret i32* %20
}

declare dso_local i32* @build_oma_dm_1(%struct.hs20_osu_client*, i8*, i32, i32) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

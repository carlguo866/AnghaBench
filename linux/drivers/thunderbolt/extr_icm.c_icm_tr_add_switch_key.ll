; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_add_switch_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_add_switch_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.icm_tr_pkg_add_device_key_response = type { %struct.TYPE_4__, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.icm_tr_pkg_add_device_key = type { %struct.TYPE_4__, i32*, i32, i32, i32, i32 }

@ICM_ADD_DEVICE_KEY = common dso_local global i32 0, align 4
@TB_SWITCH_KEY_SIZE = common dso_local global i32 0, align 4
@ICM_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FLAGS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Adding key to switch failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*)* @icm_tr_add_switch_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_tr_add_switch_key(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.icm_tr_pkg_add_device_key_response, align 8
  %7 = alloca %struct.icm_tr_pkg_add_device_key, align 8
  %8 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %9 = bitcast %struct.icm_tr_pkg_add_device_key* %7 to %struct.icm_tr_pkg_add_device_key_response*
  %10 = call i32 @memset(%struct.icm_tr_pkg_add_device_key_response* %9, i32 0, i32 32)
  %11 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 5
  %12 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %13 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32* %11, i32 %14, i32 4)
  %16 = load i32, i32* @ICM_ADD_DEVICE_KEY, align 4
  %17 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %25 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %30 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key, %struct.icm_tr_pkg_add_device_key* %7, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %36 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %39 = call i32 @memcpy(i32* %34, i32 %37, i32 %38)
  %40 = call i32 @memset(%struct.icm_tr_pkg_add_device_key_response* %6, i32 0, i32 32)
  %41 = load %struct.tb*, %struct.tb** %4, align 8
  %42 = bitcast %struct.icm_tr_pkg_add_device_key* %7 to %struct.icm_tr_pkg_add_device_key_response*
  %43 = load i32, i32* @ICM_TIMEOUT, align 4
  %44 = call i32 @icm_request(%struct.tb* %41, %struct.icm_tr_pkg_add_device_key_response* %42, i32 32, %struct.icm_tr_pkg_add_device_key_response* %6, i32 32, i32 1, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.icm_tr_pkg_add_device_key_response, %struct.icm_tr_pkg_add_device_key_response* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ICM_FLAGS_ERROR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.tb*, %struct.tb** %4, align 8
  %58 = call i32 @tb_warn(%struct.tb* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %56, %47
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.icm_tr_pkg_add_device_key_response*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_tr_pkg_add_device_key_response*, i32, %struct.icm_tr_pkg_add_device_key_response*, i32, i32, i32) #1

declare dso_local i32 @tb_warn(%struct.tb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

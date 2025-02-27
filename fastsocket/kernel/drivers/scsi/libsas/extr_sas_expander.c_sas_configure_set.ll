; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_configure_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_configure_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32* }

@CRI_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRI_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_CONF_ROUTE_INFO = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@SMP_RESP_NO_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"overflow of indexes: dev %016llx phy 0x%x index 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32, i32*, i32, i32)* @sas_configure_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_configure_set(%struct.domain_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @CRI_REQ_SIZE, align 4
  %16 = call i32* @alloc_smp_req(i32 %15)
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %91

22:                                               ; preds = %5
  %23 = load i32, i32* @CRI_RESP_SIZE, align 4
  %24 = call i32* @alloc_smp_resp(i32 %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %91

32:                                               ; preds = %22
  %33 = load i32, i32* @SMP_CONF_ROUTE_INFO, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 9
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @SAS_ADDR(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46, %32
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 128
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 16
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  %60 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @CRI_REQ_SIZE, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* @CRI_RESP_SIZE, align 4
  %65 = call i32 @smp_execute_task(%struct.domain_device* %60, i32* %61, i32 %62, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %85

69:                                               ; preds = %54
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SMP_RESP_NO_INDEX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %78 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @SAS_ADDR(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %69
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @kfree(i32* %86)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %27, %19
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @SAS_ADDR(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @SAS_DPRINTK(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

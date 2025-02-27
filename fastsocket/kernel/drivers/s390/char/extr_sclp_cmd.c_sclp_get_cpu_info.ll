; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_get_cpu_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_get_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_cpu_info = type { i32 }
%struct.read_cpu_info_sccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_CPU_INFO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCLP_CMDW_READ_CPU_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"readcpuinfo failed (response=0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_get_cpu_info(%struct.sclp_cpu_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_cpu_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.read_cpu_info_sccb*, align 8
  store %struct.sclp_cpu_info* %0, %struct.sclp_cpu_info** %3, align 8
  %6 = load i32, i32* @SCLP_HAS_CPU_INFO, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.read_cpu_info_sccb*
  store %struct.read_cpu_info_sccb* %17, %struct.read_cpu_info_sccb** %5, align 8
  %18 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %19 = icmp ne %struct.read_cpu_info_sccb* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %11
  %24 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %25 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 8, i32* %26, align 4
  %27 = load i32, i32* @SCLP_CMDW_READ_CPU_INFO, align 4
  %28 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %29 = call i32 @do_sync_request(i32 %27, %struct.read_cpu_info_sccb* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %51

33:                                               ; preds = %23
  %34 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %35 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 16
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %41 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %49 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %50 = call i32 @sclp_fill_cpu_info(%struct.sclp_cpu_info* %48, %struct.read_cpu_info_sccb* %49)
  br label %51

51:                                               ; preds = %47, %39, %32
  %52 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %5, align 8
  %53 = ptrtoint %struct.read_cpu_info_sccb* %52 to i64
  %54 = call i32 @free_page(i64 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %20, %8
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @do_sync_request(i32, %struct.read_cpu_info_sccb*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @sclp_fill_cpu_info(%struct.sclp_cpu_info*, %struct.read_cpu_info_sccb*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

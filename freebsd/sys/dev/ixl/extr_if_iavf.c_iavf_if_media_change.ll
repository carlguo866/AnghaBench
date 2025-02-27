; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ixl_media_change: begin\00", align 1
@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Media change is not supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iavf_if_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_media_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmedia*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ifmedia* @iflib_get_media(i32 %5)
  store %struct.ifmedia* %6, %struct.ifmedia** %4, align 8
  %7 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %9 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IFM_TYPE(i32 %10)
  %12 = load i64, i64* @IFM_ETHER, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @iflib_get_ifp(i32 %17)
  %19 = call i32 @if_printf(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.ifmedia* @iflib_get_media(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_domU_write_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_domU_write_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCHEDOP_yield = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @domU_write_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domU_write_console(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xencons_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.xencons_info* @vtermno_to_xencons(i32 %12)
  store %struct.xencons_info* %13, %struct.xencons_info** %9, align 8
  %14 = load %struct.xencons_info*, %struct.xencons_info** %9, align 8
  %15 = icmp eq %struct.xencons_info* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.xencons_info*, %struct.xencons_info** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__write_console(%struct.xencons_info* %24, i8* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @SCHEDOP_yield, align 4
  %40 = call i32 @HYPERVISOR_sched_op(i32 %39, i32* null)
  br label %41

41:                                               ; preds = %38, %23
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local i32 @__write_console(%struct.xencons_info*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HYPERVISOR_sched_op(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

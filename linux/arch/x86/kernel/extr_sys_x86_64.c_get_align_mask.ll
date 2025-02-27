; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_get_align_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_get_align_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@va_align = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_align_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_align_mask() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 0), align 8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 0), align 8
  %6 = call i32 (...) @mmap_is_ia32()
  %7 = sub nsw i32 2, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4, %0
  store i64 0, i64* %1, align 8
  br label %21

11:                                               ; preds = %4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PF_RANDOMIZE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i64 0, i64* %1, align 8
  br label %21

19:                                               ; preds = %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @va_align, i32 0, i32 1), align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %18, %10
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @mmap_is_ia32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

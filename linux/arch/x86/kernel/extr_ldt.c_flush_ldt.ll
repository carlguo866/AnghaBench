; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_flush_ldt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ldt.c_flush_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }

@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @flush_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_ldt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mm_struct*
  store %struct.mm_struct* %5, %struct.mm_struct** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %7 = call %struct.mm_struct* @this_cpu_read(i32 %6)
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = icmp ne %struct.mm_struct* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = call i32 @load_mm_ldt(%struct.mm_struct* %12)
  %14 = call i32 (...) @refresh_ldt_segments()
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.mm_struct* @this_cpu_read(i32) #1

declare dso_local i32 @load_mm_ldt(%struct.mm_struct*) #1

declare dso_local i32 @refresh_ldt_segments(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

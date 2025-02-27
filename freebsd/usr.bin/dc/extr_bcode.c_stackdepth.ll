; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_stackdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_stackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.number = type { i32 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stackdepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stackdepth() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @stack_size(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0))
  store i64 %3, i64* %2, align 8
  %4 = call %struct.number* (...) @new_number()
  store %struct.number* %4, %struct.number** %1, align 8
  %5 = load %struct.number*, %struct.number** %1, align 8
  %6 = getelementptr inbounds %struct.number, %struct.number* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @BN_set_word(i32 %7, i64 %8)
  %10 = call i32 @bn_check(i32 %9)
  %11 = load %struct.number*, %struct.number** %1, align 8
  %12 = call i32 @push_number(%struct.number* %11)
  ret void
}

declare dso_local i64 @stack_size(i32*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_set_word(i32, i64) #1

declare dso_local i32 @push_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

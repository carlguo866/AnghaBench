; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_processor_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SystemBasicInformation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_processor_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_processor_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @SystemBasicInformation, align 4
  %4 = call i64 @NtQuerySystemInformation(i32 %3, %struct.TYPE_3__* %2, i32 4, i32* null)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @NtQuerySystemInformation(i32, %struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

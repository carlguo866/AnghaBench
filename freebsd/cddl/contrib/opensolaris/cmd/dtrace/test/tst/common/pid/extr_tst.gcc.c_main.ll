; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/pid/extr_tst.gcc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/pid/extr_tst.gcc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@intr = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @intr, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %10 = call i32 @sigfillset(i32* %9)
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* %6, i32* null)
  br label %14

14:                                               ; preds = %14, %2
  %15 = call i32 (...) @go()
  br label %14
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @go(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

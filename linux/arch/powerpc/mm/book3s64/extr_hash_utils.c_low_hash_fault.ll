; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_low_hash_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_low_hash_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@SIGBUS = common dso_local global i32 0, align 4
@BUS_ADRERR = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @low_hash_fault(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @exception_enter()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = call i64 @user_mode(%struct.pt_regs* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @SIGBUS, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = load i32, i32* @BUS_ADRERR, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @_exception(i32 %13, %struct.pt_regs* %14, i32 %15, i64 %16)
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @SIGBUS, align 4
  %22 = call i32 @bad_page_fault(%struct.pt_regs* %19, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @exception_exit(i32 %24)
  ret void
}

declare dso_local i32 @exception_enter(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @_exception(i32, %struct.pt_regs*, i32, i64) #1

declare dso_local i32 @bad_page_fault(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @exception_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

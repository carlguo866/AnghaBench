; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_isram-driver.c_isram_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mm/extr_isram-driver.c_isram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CODE_START = common dso_local global i64 0, align 8
@L1_CODE_LENGTH = common dso_local global i64 0, align 8
@dtest_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @isram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isram_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* @L1_CODE_START, align 8
  %9 = load i64, i64* @L1_CODE_LENGTH, align 8
  %10 = add nsw i64 %8, %9
  %11 = inttoptr i64 %10 to i8*
  %12 = icmp uge i8* %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @IADDR2DTEST(i8* %15)
  %17 = or i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @dtest_lock, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @bfin_write_DTEST_DATA0(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 32
  %24 = call i32 @bfin_write_DTEST_DATA1(i32 %23)
  %25 = call i32 (...) @__builtin_bfin_csync()
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @bfin_write_DTEST_COMMAND(i32 %26)
  %28 = call i32 (...) @__builtin_bfin_csync()
  %29 = call i32 @bfin_write_DTEST_COMMAND(i32 0)
  %30 = call i32 (...) @__builtin_bfin_csync()
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @dtest_lock, i64 %31)
  br label %33

33:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @IADDR2DTEST(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfin_write_DTEST_DATA0(i32) #1

declare dso_local i32 @bfin_write_DTEST_DATA1(i32) #1

declare dso_local i32 @__builtin_bfin_csync(...) #1

declare dso_local i32 @bfin_write_DTEST_COMMAND(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

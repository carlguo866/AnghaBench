; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_adjust_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_adjust_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DImode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ix86_adjust_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_adjust_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GET_MODE(i32 %5)
  %7 = load i64, i64* @DImode, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @GEN_INT(i32 %13)
  %15 = call i32 @gen_adddi3(i32 %10, i32 %11, i32 %14)
  %16 = call i32 @emit_insn(i32 %15)
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @GEN_INT(i32 %21)
  %23 = call i32 @gen_addsi3(i32 %18, i32 %19, i32 %22)
  %24 = call i32 @emit_insn(i32 %23)
  br label %25

25:                                               ; preds = %17, %9
  ret void
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_noop_set_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_noop_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reload_cse_noop_set_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_cse_noop_set_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @SET_DEST(i32 %4)
  %6 = call i64 @cselib_reg_set_mode(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @SET_DEST(i32 %7)
  %9 = call i64 @GET_MODE(i32 %8)
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SET_DEST(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @SET_SRC(i32 %15)
  %17 = call i32 @rtx_equal_for_cselib_p(i32 %14, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @cselib_reg_set_mode(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @rtx_equal_for_cselib_p(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

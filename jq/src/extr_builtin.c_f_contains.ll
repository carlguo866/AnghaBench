; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_contains.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"cannot have their containment checked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_contains(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @jv_get_kind(i32 %10)
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @jv_contains(i32 %14, i32 %15)
  %17 = call i32 @jv_bool(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @type_error2(i32 %19, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_bool(i32) #1

declare dso_local i32 @jv_contains(i32, i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_arrayindex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_arrayindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @arrayindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayindex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @ttisnumber(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @nvalue(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @lua_number2int(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @cast_num(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @luai_numeq(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %1
  store i32 -1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @lua_number2int(i32, i32) #1

declare dso_local i64 @luai_numeq(i32, i32) #1

declare dso_local i32 @cast_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_concat_obj.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_concat_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSCLASS_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @concat_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_obj(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @iface_to_jsdisp(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @JSCLASS_ARRAY, align 4
  %17 = call i64 @is_class(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @array_from_jsdisp(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @concat_array(i32* %20, i32 %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @jsdisp_release(i32* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %14
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @jsdisp_release(i32* %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @jsval_disp(i32* %36)
  %38 = call i32 @jsdisp_propput_idx(i32* %32, i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @iface_to_jsdisp(i32*) #1

declare dso_local i64 @is_class(i32*, i32) #1

declare dso_local i32 @concat_array(i32*, i32, i32*) #1

declare dso_local i32 @array_from_jsdisp(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_disp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_remove.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_dict.c_hb_dict_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_dict_remove(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @json_object_del(i32* %7, i8* %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @makelower(i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @json_object_del(i32* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i64 @json_object_del(i32*, i8*) #1

declare dso_local i8* @makelower(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

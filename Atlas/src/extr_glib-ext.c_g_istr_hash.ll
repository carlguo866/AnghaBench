; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_glib-ext.c_g_istr_hash.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_glib-ext.c_g_istr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_istr_hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  store i32 5381, i32* %5, align 4
  br label %7

7:                                                ; preds = %12, %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = load i8, i8* %8, align 1
  store i8 %10, i8* %4, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 5
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @g_ascii_toupper(i8 zeroext %17)
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %5, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @g_ascii_toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_read4.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_read4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @php_read4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_read4(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i8], align 1
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %7 = call i32 @php_stream_read(i32* %5, i8* %6, i32 4)
  %8 = sext i32 %7 to i64
  %9 = icmp ne i64 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 24
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 16
  %20 = add i32 %15, %19
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = add i32 %20, %24
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add i32 %25, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %11, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

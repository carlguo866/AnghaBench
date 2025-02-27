; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_ziplistGetObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_ziplistGetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ziplistGetObject(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @serverAssert(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @ziplistGet(i8* %11, i8** %4, i32* %5, i64* %6)
  %13 = call i32 @serverAssert(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sdsnewlen(i8* %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @sdsfromlonglong(i64 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdsfromlonglong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

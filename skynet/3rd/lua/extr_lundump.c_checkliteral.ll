; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lundump.c_checkliteral.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lundump.c_checkliteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @checkliteral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkliteral(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @LoadVector(i32* %11, i8* %12, i64 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @memcmp(i8* %15, i8* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @error(i32* %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %3
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LoadVector(i32*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

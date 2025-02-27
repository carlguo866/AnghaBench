; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_st_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-pwcache/extr_pwcache.c_st_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @st_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_hash(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @_DIAGASSERT(i32 %10)
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %5, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 24
  %27 = or i32 %24, %26
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %29, %30
  ret i32 %31
}

declare dso_local i32 @_DIAGASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

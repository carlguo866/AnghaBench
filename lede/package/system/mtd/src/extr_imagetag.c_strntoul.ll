; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_imagetag.c_strntoul.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_imagetag.c_strntoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i64)* @strntoul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strntoul(i8* %0, i8** %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = add i64 %11, 1
  %13 = call i8* @calloc(i64 %12, i32 1)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @strncpy(i8* %17, i8* %18, i64 %19)
  %21 = load i8*, i8** %9, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @strtoul(i8* %21, i8** %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %16, %4
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

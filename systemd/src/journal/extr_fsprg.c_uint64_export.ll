; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_uint64_export.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_uint64_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @uint64_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uint64_export(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 8
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 56
  %13 = and i32 %12, 255
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 48
  %19 = and i32 %18, 255
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 40
  %25 = and i32 %24, 255
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 32
  %31 = and i32 %30, 255
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = load i8*, i8** %4, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 255
  %56 = load i8*, i8** %4, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  store i32 %55, i32* %58, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

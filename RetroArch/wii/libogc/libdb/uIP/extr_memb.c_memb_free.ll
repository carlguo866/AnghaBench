; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memb.c_memb_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_memb.c_memb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memb_blks = type { i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memb_free(%struct.memb_blks* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memb_blks*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.memb_blks* %0, %struct.memb_blks** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load %struct.memb_blks*, %struct.memb_blks** %4, align 8
  %12 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.memb_blks*, %struct.memb_blks** %4, align 8
  %18 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = icmp eq i32* %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.memb_blks*, %struct.memb_blks** %4, align 8
  %33 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MEM_ALIGN_SIZE(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %15

42:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @MEM_ALIGN_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

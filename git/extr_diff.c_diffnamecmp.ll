; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffnamecmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffnamecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @diffnamecmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diffnamecmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.diff_filepair*, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.diff_filepair**
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  store %struct.diff_filepair* %11, %struct.diff_filepair** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.diff_filepair**
  %14 = load %struct.diff_filepair*, %struct.diff_filepair** %13, align 8
  store %struct.diff_filepair* %14, %struct.diff_filepair** %6, align 8
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %21 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %27 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i8* [ %24, %19 ], [ %30, %25 ]
  store i8* %32, i8** %7, align 8
  %33 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %34 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %49

43:                                               ; preds = %31
  %44 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %45 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i8* [ %42, %37 ], [ %48, %43 ]
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52)
  ret i32 %53
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_get_unique_section_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_get_unique_section_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_get_unique_section_name(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add i32 %13, 8
  %15 = call i8* @bfd_malloc(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %59

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @memcpy(i8* %20, i8* %21, i32 %22)
  store i32 1, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 999999
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i64 @section_hash_lookup(i32* %45, i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %30, label %51

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** %10, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %18
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @section_hash_lookup(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

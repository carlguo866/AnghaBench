; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_matchFromTo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_matchFromTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i32)* @matchFromTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matchFromTo(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %55

42:                                               ; preds = %23
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @strncmp(i8* %48, i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %55

54:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %41, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

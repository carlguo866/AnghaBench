; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeAddChild.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeAddChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@REMAKE = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@MAKE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MakeAddChild: need to examine %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @MakeAddChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeAddChild(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REMAKE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OP_USE, align 4
  %22 = load i32, i32* @OP_USEBEFORE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @MAKE, align 4
  %28 = call i64 @DEBUG(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* @debug_file, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = call i32 @Lst_EnQueue(i32 %40, %struct.TYPE_3__* %41)
  br label %43

43:                                               ; preds = %39, %17, %2
  ret i32 0
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @Lst_EnQueue(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

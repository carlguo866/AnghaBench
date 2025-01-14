; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_dump_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_dump_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DEBUG = common dso_local global i32 0, align 4
@SAHARA_MAX_HW_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Link (%d) (%pad):\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\09len = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09p = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\09next = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sahara_dev*)* @sahara_dump_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sahara_dump_links(%struct.sahara_dev* %0) #0 {
  %2 = alloca %struct.sahara_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %2, align 8
  %4 = load i32, i32* @DEBUG, align 4
  %5 = call i32 @__is_defined(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %72

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %64, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SAHARA_MAX_HW_LINK, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %15 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %19 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32* %23)
  %25 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %26 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %29 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %39 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %42 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %52 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %55 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %13
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %9

67:                                               ; preds = %9
  %68 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %69 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %7
  ret void
}

declare dso_local i32 @__is_defined(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_cp_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_cp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.stat = type { i32, i64 }

@MINFBSZ = common dso_local global i32 0, align 4
@BLKMULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to obtain block size for file %s\00", align 1
@buf = common dso_local global i32 0, align 4
@blksz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed write during copy of %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"File %s changed size during copy to %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Failed stat of %s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"File %s was modified during copy to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_file(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %19 = load i32, i32* @MINFBSZ, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLKMULT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @fstat(i32 %36, %struct.stat* %15)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %43, %39
  br label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @errno, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 0, i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %80, %51
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @buf, align 4
  %56 = load i32, i32* @blksz, align 4
  %57 = call i32 @read(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %85

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @buf, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @write(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %75

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @buf, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @file_write(i32 %69, i32 %70, i32 %71, i32* %13, i32* %12, i32 %72, i8* %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %8, align 8
  br label %53

85:                                               ; preds = %79, %59
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @errno, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 1, i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %92, i8* %95)
  br label %141

97:                                               ; preds = %85
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %107, i8* %110)
  br label %140

112:                                              ; preds = %97
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @fstat(i32 %113, %struct.stat* %15)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @errno, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32, i32, i8*, i8*, ...) @syswarn(i32 1, i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %139

122:                                              ; preds = %112
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %133, i8* %136)
  br label %138

138:                                              ; preds = %130, %122
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %139, %104
  br label %141

141:                                              ; preds = %140, %88
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @file_flush(i32 %154, i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %147, %144, %141
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @file_write(i32, i32, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @paxwarn(i32, i8*, i8*, i8*) #1

declare dso_local i32 @file_flush(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

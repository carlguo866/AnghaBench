; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_buf_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_buf_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i64, i8*, i64*)* }
%struct.file = type { i64, i64, i8*, i64, %struct.TYPE_4__, %struct.ext2fs* }
%struct.TYPE_4__ = type { i64 }
%struct.ext2fs = type { i32 }

@F_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8**, i64*)* @buf_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_read_file(%struct.open_file* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ext2fs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.open_file*, %struct.open_file** %4, align 8
  %15 = getelementptr inbounds %struct.open_file, %struct.open_file* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.file*
  store %struct.file* %17, %struct.file** %7, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 5
  %20 = load %struct.ext2fs*, %struct.ext2fs** %19, align 8
  store %struct.ext2fs* %20, %struct.ext2fs** %8, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.ext2fs*, %struct.ext2fs** %8, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @blkoff(%struct.ext2fs* %21, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.ext2fs*, %struct.ext2fs** %8, align 8
  %27 = load %struct.file*, %struct.file** %7, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @lblkno(%struct.ext2fs* %26, i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.ext2fs*, %struct.ext2fs** %8, align 8
  %32 = load %struct.file*, %struct.file** %7, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 4
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @dblksize(%struct.ext2fs* %31, %struct.TYPE_4__* %33, i64 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.file*, %struct.file** %7, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %3
  %42 = load %struct.open_file*, %struct.open_file** %4, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @block_map(%struct.open_file* %42, i64 %43, i64* %11)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %134

48:                                               ; preds = %41
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.ext2fs*, %struct.ext2fs** %8, align 8
  %55 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @malloc(i32 %56)
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.file*, %struct.file** %7, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @bzero(i8* %66, i64 %67)
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  br label %97

72:                                               ; preds = %60
  %73 = call i32 @twiddle(i32 4)
  %74 = load %struct.open_file*, %struct.open_file** %4, align 8
  %75 = getelementptr inbounds %struct.open_file, %struct.open_file* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32 (i32, i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i32, i64, i8*, i64*)** %77, align 8
  %79 = load %struct.open_file*, %struct.open_file** %4, align 8
  %80 = getelementptr inbounds %struct.open_file, %struct.open_file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @F_READ, align 4
  %83 = load %struct.ext2fs*, %struct.ext2fs** %8, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @fsb_to_db(%struct.ext2fs* %83, i64 %84)
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.file*, %struct.file** %7, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.file*, %struct.file** %7, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 3
  %92 = call i32 %78(i32 %81, i32 %82, i32 %85, i64 %86, i8* %89, i64* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %72
  br label %134

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %96, %63
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.file*, %struct.file** %7, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %3
  %102 = load %struct.file*, %struct.file** %7, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8**, i8*** %5, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %108, %109
  %111 = load i64*, i64** %6, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.file*, %struct.file** %7, align 8
  %115 = getelementptr inbounds %struct.file, %struct.file* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.file*, %struct.file** %7, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = icmp ugt i64 %113, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %101
  %124 = load %struct.file*, %struct.file** %7, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.file*, %struct.file** %7, align 8
  %129 = getelementptr inbounds %struct.file, %struct.file* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %127, %130
  %132 = load i64*, i64** %6, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %123, %101
  br label %134

134:                                              ; preds = %133, %95, %47
  %135 = load i32, i32* %13, align 4
  ret i32 %135
}

declare dso_local i64 @blkoff(%struct.ext2fs*, i64) #1

declare dso_local i64 @lblkno(%struct.ext2fs*, i64) #1

declare dso_local i64 @dblksize(%struct.ext2fs*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @block_map(%struct.open_file*, i64, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @fsb_to_db(%struct.ext2fs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

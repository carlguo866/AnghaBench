; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_stream.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.mm_backup_buffer*, i64, i32 }
%struct.mm_backup_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Writing thread reported error.\00", align 1
@INPUT_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64)* @dump_write_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_stream(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_backup_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %126, %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %38, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %25, %20
  %37 = phi i1 [ false, %25 ], [ false, %20 ], [ %35, %30 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = call i32 @pthread_cond_wait(i32* %40, i32* %42)
  br label %20

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  %53 = call i32 @LOGE_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %131

54:                                               ; preds = %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %56, align 8
  store %struct.mm_backup_buffer* %57, %struct.mm_backup_buffer** %8, align 8
  %58 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @INPUT_BUFFER_SIZE, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load i64, i64* @INPUT_BUFFER_SIZE, align 8
  %67 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  br label %73

71:                                               ; preds = %54
  %72 = load i64, i64* %7, align 8
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi i64 [ %70, %65 ], [ %72, %71 ]
  store i64 %74, i64* %10, align 8
  %75 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %76 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %79 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @memcpy(i64 %81, i32* %82, i64 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %90 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %9, align 8
  %96 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @INPUT_BUFFER_SIZE, align 8
  %100 = sdiv i64 %99, 4
  %101 = icmp sgt i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mm_backup_buffer*, %struct.mm_backup_buffer** %8, align 8
  %106 = getelementptr inbounds %struct.mm_backup_buffer, %struct.mm_backup_buffer* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @INPUT_BUFFER_SIZE, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %73
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %73
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = call i32 @pthread_cond_signal(i32* %124)
  br label %126

126:                                              ; preds = %122, %117
  br label %16

127:                                              ; preds = %16
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = call i32 @pthread_mutex_unlock(i32* %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %49
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @LOGE_(i8*) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

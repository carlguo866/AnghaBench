; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_dsl_dataset.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_dsl_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\09\09dir_obj = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09\09prev_snap_obj = %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\09\09prev_snap_txg = %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09\09next_snap_obj = %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09\09snapnames_zapobj = %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\09\09num_children = %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\09\09userrefs_obj = %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09\09creation_time = %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\09\09creation_txg = %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09\09deadlist_obj = %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09\09used_bytes = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09\09compressed_bytes = %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\09\09uncompressed_bytes = %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\09\09unique = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\09\09fsid_guid = %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09\09guid = %llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\09\09flags = %llx\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"\09\09next_clones_obj = %llu\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\09\09props_obj = %llu\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\09\09bp = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @dump_dsl_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dsl_dataset(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %9, align 8
  %20 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 32, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @CTASSERT(i32 %27)
  %29 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 32, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @CTASSERT(i32 %32)
  %34 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @CTASSERT(i32 %37)
  %39 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 32, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @CTASSERT(i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = icmp eq %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %160

47:                                               ; preds = %4
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 136
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 18
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %59 = call i32 @zdb_nicenum(i32 %57, i8* %58, i32 32)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 17
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %64 = call i32 @zdb_nicenum(i32 %62, i8* %63, i32 32)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %69 = call i32 @zdb_nicenum(i32 %67, i8* %68, i32 32)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %74 = call i32 @zdb_nicenum(i32 %72, i8* %73, i32 32)
  %75 = trunc i64 %21 to i32
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 14
  %78 = call i32 @snprintf_blkptr(i8* %23, i32 %75, i32* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 12
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  %114 = call i8* @ctime(i32* %10)
  %115 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %127 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %129 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %128)
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %131 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %130)
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %133 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %132)
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* %137)
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %142)
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %147)
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* %152)
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %157)
  %159 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %23)
  store i32 0, i32* %17, align 4
  br label %160

160:                                              ; preds = %47, %46
  %161 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %17, align 4
  switch i32 %162, label %164 [
    i32 0, label %163
    i32 1, label %163
  ]

163:                                              ; preds = %160, %160
  ret void

164:                                              ; preds = %160
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CTASSERT(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @zdb_nicenum(i32, i8*, i32) #2

declare dso_local i32 @snprintf_blkptr(i8*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @ctime(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

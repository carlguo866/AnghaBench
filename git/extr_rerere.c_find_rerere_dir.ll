; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_find_rerere_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_find_rerere_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_dir = type { i64, i64, i32*, i32 }

@GIT_MAX_RAWSZ = common dso_local global i32 0, align 4
@rerere_dir = common dso_local global %struct.rerere_dir** null, align 8
@rerere_dir_nr = common dso_local global i32 0, align 4
@rerere_dir_hash = common dso_local global i32 0, align 4
@rerere_dir_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rerere_dir* (i8*)* @find_rerere_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rerere_dir* @find_rerere_dir(i8* %0) #0 {
  %2 = alloca %struct.rerere_dir*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rerere_dir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @GIT_MAX_RAWSZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @get_sha1_hex(i8* %13, i8* %12)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.rerere_dir* null, %struct.rerere_dir** %2, align 8
  store i32 1, i32* %8, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %19 = load i32, i32* @rerere_dir_nr, align 4
  %20 = load i32, i32* @rerere_dir_hash, align 4
  %21 = call i32 @sha1_pos(i8* %12, %struct.rerere_dir** %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = call %struct.rerere_dir* @xmalloc(i32 32)
  store %struct.rerere_dir* %25, %struct.rerere_dir** %6, align 8
  %26 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %27 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hashcpy(i32 %28, i8* %12)
  %30 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %31 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %33 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %35 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 -1, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %39 = load i32, i32* @rerere_dir_nr, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* @rerere_dir_alloc, align 4
  %42 = call i32 @ALLOC_GROW(%struct.rerere_dir** %38, i32 %40, i32 %41)
  %43 = load i32, i32* @rerere_dir_nr, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @rerere_dir_nr, align 4
  %45 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.rerere_dir*, %struct.rerere_dir** %45, i64 %47
  %49 = getelementptr inbounds %struct.rerere_dir*, %struct.rerere_dir** %48, i64 1
  %50 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rerere_dir*, %struct.rerere_dir** %50, i64 %52
  %54 = load i32, i32* @rerere_dir_nr, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @MOVE_ARRAY(%struct.rerere_dir** %49, %struct.rerere_dir** %53, i32 %57)
  %59 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %60 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rerere_dir*, %struct.rerere_dir** %60, i64 %62
  store %struct.rerere_dir* %59, %struct.rerere_dir** %63, align 8
  %64 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  %65 = call i32 @scan_rerere_dir(%struct.rerere_dir* %64)
  br label %66

66:                                               ; preds = %24, %17
  %67 = load %struct.rerere_dir**, %struct.rerere_dir*** @rerere_dir, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.rerere_dir*, %struct.rerere_dir** %67, i64 %69
  %71 = load %struct.rerere_dir*, %struct.rerere_dir** %70, align 8
  store %struct.rerere_dir* %71, %struct.rerere_dir** %2, align 8
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %16
  %73 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  ret %struct.rerere_dir* %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_sha1_hex(i8*, i8*) #2

declare dso_local i32 @sha1_pos(i8*, %struct.rerere_dir**, i32, i32) #2

declare dso_local %struct.rerere_dir* @xmalloc(i32) #2

declare dso_local i32 @hashcpy(i32, i8*) #2

declare dso_local i32 @ALLOC_GROW(%struct.rerere_dir**, i32, i32) #2

declare dso_local i32 @MOVE_ARRAY(%struct.rerere_dir**, %struct.rerere_dir**, i32) #2

declare dso_local i32 @scan_rerere_dir(%struct.rerere_dir*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

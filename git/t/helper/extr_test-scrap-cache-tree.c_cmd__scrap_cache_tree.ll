; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-scrap-cache-tree.c_cmd__scrap_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-scrap-cache-tree.c_cmd__scrap_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to read index file\00", align 1
@active_cache_tree = common dso_local global i32* null, align 8
@the_index = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to write index file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__scrap_cache_tree(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.lock_file, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = bitcast %struct.lock_file* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %7 = call i32 (...) @setup_git_directory()
  %8 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %9 = call i32 @hold_locked_index(%struct.lock_file* %5, i32 %8)
  %10 = call i64 (...) @read_cache()
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  store i32* null, i32** @active_cache_tree, align 8
  %15 = load i32, i32* @COMMIT_LOCK, align 4
  %16 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %5, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory(...) #2

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #2

declare dso_local i64 @read_cache(...) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

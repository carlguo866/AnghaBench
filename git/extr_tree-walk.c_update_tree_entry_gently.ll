; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_update_tree_entry_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_update_tree_entry_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.tree_desc = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_tree_entry_gently(%struct.tree_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_desc*, align 8
  %4 = alloca %struct.strbuf, align 4
  store %struct.tree_desc* %0, %struct.tree_desc** %3, align 8
  %5 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.tree_desc*, %struct.tree_desc** %3, align 8
  %7 = call i64 @update_tree_entry_internal(%struct.tree_desc* %6, %struct.strbuf* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @strbuf_release(%struct.strbuf* %4)
  %14 = load %struct.tree_desc*, %struct.tree_desc** %3, align 8
  %15 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 -1, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @update_tree_entry_internal(%struct.tree_desc*, %struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

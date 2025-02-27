; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { i32 }
%struct.rev_info = type { i32 }
%struct.pretty_print_context = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_output_commit(%struct.strbuf* %0, %struct.commit* %1, %struct.rev_info* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.pretty_print_context, align 4
  %8 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.rev_info* %2, %struct.rev_info** %6, align 8
  %9 = bitcast %struct.pretty_print_context* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.commit*, %struct.commit** %5, align 8
  %12 = call i32 @format_commit_message(%struct.commit* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %8, %struct.pretty_print_context* %7)
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %17 = call i32 @fmt_output_subject(%struct.strbuf* %13, i32 %15, %struct.rev_info* %16)
  %18 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @format_commit_message(%struct.commit*, i8*, %struct.strbuf*, %struct.pretty_print_context*) #2

declare dso_local i32 @fmt_output_subject(%struct.strbuf*, i32, %struct.rev_info*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

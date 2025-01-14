; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_show_tagger.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_show_tagger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.rev_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pretty_print_context = type { i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Tagger\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.rev_info*)* @show_tagger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tagger(i8* %0, %struct.rev_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.pretty_print_context, align 4
  store i8* %0, i8** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.pretty_print_context* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (...) @get_log_output_encoding()
  %19 = call i32 @pp_user_info(%struct.pretty_print_context* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %5, i8* %17, i32 %18)
  %20 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pp_user_info(%struct.pretty_print_context*, i8*, %struct.strbuf*, i8*, i32) #2

declare dso_local i32 @get_log_output_encoding(...) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

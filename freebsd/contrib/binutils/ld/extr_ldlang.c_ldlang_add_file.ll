; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_ldlang_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_ldlang_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__** }

@file_chain = common dso_local global i32 0, align 4
@output_bfd = common dso_local global %struct.TYPE_9__* null, align 8
@link_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@g_switch_value = common dso_local global i32 0, align 4
@section_already_linked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldlang_add_file(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = bitcast %struct.TYPE_8__* %3 to i32*
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = call i32 @lang_statement_append(i32* @file_chain, i32* %4, i32* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @output_bfd, align 8
  %20 = icmp ne %struct.TYPE_9__* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @link_info, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store %struct.TYPE_9__** %30, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @link_info, i32 0, i32 0), align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* @g_switch_value, align 4
  %40 = call i32 @bfd_set_gp_size(%struct.TYPE_9__* %38, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @section_already_linked, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = call i32 @bfd_map_over_sections(%struct.TYPE_9__* %43, i32 %44, %struct.TYPE_8__* %45)
  ret void
}

declare dso_local i32 @lang_statement_append(i32*, i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bfd_set_gp_size(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

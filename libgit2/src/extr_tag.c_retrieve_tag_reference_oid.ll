; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tag.c_retrieve_tag_reference_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tag.c_retrieve_tag_reference_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REFS_TAGS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*, i8*)* @retrieve_tag_reference_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_tag_reference_oid(i32* %0, %struct.TYPE_4__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @git_buf_joinpath(%struct.TYPE_4__* %10, i32 %11, i8* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %23

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_reference_name_to_id(i32* %17, i32* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

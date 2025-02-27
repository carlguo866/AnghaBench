; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_init.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Index dir %s does not exist and is unable to create\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_repo_manager_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @checkdir_with_mkdir(i32 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 -1, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @load_repos(%struct.TYPE_7__* %15, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @init_folder_perms(%struct.TYPE_7__* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @checkdir_with_mkdir(i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @load_repos(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @init_folder_perms(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

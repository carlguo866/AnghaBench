; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_set_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_set_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @set_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_index(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = call i32 @GIT_REFCOUNT_OWN(i32* %8, %struct.TYPE_4__* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @GIT_REFCOUNT_INC(i32* %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @git__swap(i32 %16, i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @GIT_REFCOUNT_OWN(i32* %21, %struct.TYPE_4__* null)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_index_free(i32* %23)
  br label %25

25:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @GIT_REFCOUNT_OWN(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(i32*) #1

declare dso_local i32* @git__swap(i32, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

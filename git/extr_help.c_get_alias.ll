; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_get_alias.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_get_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"alias.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @get_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alias(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.string_list*
  store %struct.string_list* %9, %struct.string_list** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @skip_prefix(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @xstrdup(i8* %14)
  %16 = load %struct.string_list*, %struct.string_list** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_2__* @string_list_append(%struct.string_list* %16, i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  br label %20

20:                                               ; preds = %13, %3
  ret i32 0
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local %struct.TYPE_2__* @string_list_append(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_printACLColumn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_printACLColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [46 x i8] c"pg_catalog.array_to_string(%s, E'\\n') AS \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Access privileges\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"pg_catalog.array_to_string(%s, '\\n') AS \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @printACLColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printACLColumn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %6 = icmp sge i32 %5, 80100
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @gettext_noop(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @appendPQExpBuffer(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @gettext_noop(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @appendPQExpBuffer(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

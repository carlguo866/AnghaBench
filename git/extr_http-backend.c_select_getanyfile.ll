; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_select_getanyfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_select_getanyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@getanyfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported service: getanyfile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @select_getanyfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_getanyfile(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %3 = load i32, i32* @getanyfile, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %7 = call i32 @forbidden(%struct.strbuf* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare dso_local i32 @forbidden(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

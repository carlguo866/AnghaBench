; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_as.c_as_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_as.c_as_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aslookup = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"!q\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @as_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aslookup*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.aslookup*
  store %struct.aslookup* %5, %struct.aslookup** %3, align 8
  %6 = load %struct.aslookup*, %struct.aslookup** %3, align 8
  %7 = getelementptr inbounds %struct.aslookup, %struct.aslookup* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @fprintf(i64 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aslookup*, %struct.aslookup** %3, align 8
  %11 = getelementptr inbounds %struct.aslookup, %struct.aslookup* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @fclose(i64 %12)
  %14 = load %struct.aslookup*, %struct.aslookup** %3, align 8
  %15 = call i32 @free(%struct.aslookup* %14)
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @free(%struct.aslookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

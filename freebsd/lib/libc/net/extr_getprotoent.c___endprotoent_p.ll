; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___endprotoent_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___endprotoent_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent_data = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__endprotoent_p(%struct.protoent_data* %0) #0 {
  %2 = alloca %struct.protoent_data*, align 8
  store %struct.protoent_data* %0, %struct.protoent_data** %2, align 8
  %3 = load %struct.protoent_data*, %struct.protoent_data** %2, align 8
  %4 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.protoent_data*, %struct.protoent_data** %2, align 8
  %9 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @fclose(i32* %10)
  %12 = load %struct.protoent_data*, %struct.protoent_data** %2, align 8
  %13 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.protoent_data*, %struct.protoent_data** %2, align 8
  %16 = getelementptr inbounds %struct.protoent_data, %struct.protoent_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

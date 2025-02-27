; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_async_delay_filter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_delay_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @async_delay_filter_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_delay_filter_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.async_delay_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.async_delay_data*
  store %struct.async_delay_data* %5, %struct.async_delay_data** %3, align 8
  %6 = load %struct.async_delay_data*, %struct.async_delay_data** %3, align 8
  %7 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %6, i32 0, i32 2
  %8 = call i32 @free_audio_packet(i32* %7)
  %9 = load %struct.async_delay_data*, %struct.async_delay_data** %3, align 8
  %10 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %9, i32 0, i32 1
  %11 = call i32 @circlebuf_free(i32* %10)
  %12 = load %struct.async_delay_data*, %struct.async_delay_data** %3, align 8
  %13 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %12, i32 0, i32 0
  %14 = call i32 @circlebuf_free(i32* %13)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @bfree(i8* %15)
  ret void
}

declare dso_local i32 @free_audio_packet(i32*) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
